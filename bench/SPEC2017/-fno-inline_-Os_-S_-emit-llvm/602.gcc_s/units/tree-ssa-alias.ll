; ModuleID = 'tree-ssa-alias.c'
source_filename = "tree-ssa-alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.referenced_var_iterator = type { %struct.htab_iterator }
%struct.htab_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ao_ref_s = type { ptr, ptr, i64, i64, i64, i32, i32 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }

@.str = private unnamed_addr constant [28 x i8] c"\0AAlias oracle query stats:\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"  refs_may_alias_p: %ld disambiguations, %ld queries\0A\00", align 1
@alias_stats.0 = internal unnamed_addr global i64 0, align 8
@alias_stats.1 = internal unnamed_addr global i64 0, align 8
@alias_stats.2 = internal unnamed_addr global i64 0, align 8
@alias_stats.3 = internal unnamed_addr global i64 0, align 8
@.str.2 = private unnamed_addr constant [62 x i8] c"  ref_maybe_used_by_call_p: %ld disambiguations, %ld queries\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"  call_may_clobber_ref_p: %ld disambiguations, %ld queries\0A\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"\0A\0AAlias information for %s\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Aliased symbols\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"\0ACall clobber information\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"\0AESCAPED\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"\0ACALLUSED\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"\0A\0AFlow-insensitive points-to information\0A\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [17 x i8] c"tree-ssa-alias.c\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c", points-to anything\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c", points-to non-local\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c", points-to escaped\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c", points-to NULL\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c", points-to vars: \00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c" (includes global vars)\00", align 1
@dump_flags = external local_unnamed_addr global i32, align 4
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@flag_strict_aliasing = external local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@flag_errno_math = external local_unnamed_addr global i32, align 4
@timevar_enable = external local_unnamed_addr global i8, align 1

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_alias_stats(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str, i64 27, i64 1, ptr %0)
  %3 = load i64, ptr @alias_stats.1, align 8, !tbaa !6
  %4 = load i64, ptr @alias_stats.0, align 8, !tbaa !11
  %5 = add i64 %4, %3
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, i64 noundef %3, i64 noundef %5) #12
  %7 = load i64, ptr @alias_stats.3, align 8, !tbaa !12
  %8 = load i64, ptr @alias_stats.1, align 8, !tbaa !6
  %9 = load i64, ptr @alias_stats.2, align 8, !tbaa !13
  %10 = add i64 %9, %8
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %7, i64 noundef %10) #12
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, i64 noundef 0, i64 noundef 0) #12
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ptr_deref_may_alias_global_p(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call zeroext i8 @pt_solution_includes_global(ptr noundef nonnull %7) #13
  br label %11

11:                                               ; preds = %5, %1, %9
  %12 = phi i8 [ %10, %9 ], [ 1, %1 ], [ 1, %5 ]
  ret i8 %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare zeroext i8 @pt_solution_includes_global(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_alias_info(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.referenced_var_iterator, align 8
  %3 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !15
  %4 = load ptr, ptr @current_function_decl, align 8, !tbaa !24
  %5 = tail call ptr %3(ptr noundef %4, i32 noundef 2) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %5) #12
  %7 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 17, i64 1, ptr %0)
  %8 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %2) #12
  %9 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %2) #12, !range !25
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1, %16
  %12 = phi ptr [ %17, %16 ], [ %8, %1 ]
  %13 = tail call fastcc zeroext i8 @may_be_aliased(ptr noundef %12) #12, !range !25
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @dump_variable(ptr noundef %0, ptr noundef %12) #13
  br label %16

16:                                               ; preds = %11, %15
  %17 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %2) #12
  %18 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %2) #12, !range !25
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %11, label %20, !llvm.loop !26

20:                                               ; preds = %16, %1
  %21 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 26, i64 1, ptr %0)
  %22 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 8, i64 1, ptr %0)
  %23 = load ptr, ptr @cfun, align 8, !tbaa !24
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !28
  %26 = getelementptr inbounds %struct.gimple_df, ptr %25, i64 0, i32 4
  tail call void @dump_points_to_solution(ptr noundef %0, ptr noundef nonnull %26) #12
  %27 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 9, i64 1, ptr %0)
  %28 = load ptr, ptr @cfun, align 8, !tbaa !24
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !28
  %31 = getelementptr inbounds %struct.gimple_df, ptr %30, i64 0, i32 5
  tail call void @dump_points_to_solution(ptr noundef %0, ptr noundef nonnull %31) #12
  %32 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 42, i64 1, ptr %0)
  %33 = load ptr, ptr @cfun, align 8, !tbaa !24
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !28
  %36 = getelementptr inbounds %struct.gimple_df, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !31
  %38 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %37) #12
  %39 = icmp ugt i32 %38, 1
  br i1 %39, label %40, label %67

40:                                               ; preds = %20, %57
  %41 = phi ptr [ %58, %57 ], [ %33, %20 ]
  %42 = phi ptr [ %63, %57 ], [ %37, %20 ]
  %43 = phi i64 [ %59, %57 ], [ 1, %20 ]
  %44 = trunc i64 %43 to i32
  %45 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %42, i32 noundef %44) #12
  %46 = icmp eq ptr %45, null
  br i1 %46, label %57, label %47

47:                                               ; preds = %40
  %48 = load i64, ptr %45, align 8
  %49 = and i64 %48, 33554432
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.tree_ssa_name, ptr %45, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !14
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  tail call void @dump_points_to_info_for(ptr noundef %0, ptr noundef nonnull %45) #12
  %56 = load ptr, ptr @cfun, align 8, !tbaa !24
  br label %57

57:                                               ; preds = %51, %55, %40, %47
  %58 = phi ptr [ %41, %51 ], [ %56, %55 ], [ %41, %40 ], [ %41, %47 ]
  %59 = add nuw nsw i64 %43, 1
  %60 = getelementptr inbounds %struct.function, ptr %58, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !28
  %62 = getelementptr inbounds %struct.gimple_df, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !31
  %64 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %63) #12
  %65 = zext i32 %64 to i64
  %66 = icmp ult i64 %59, %65
  br i1 %66, label %40, label %67, !llvm.loop !35

67:                                               ; preds = %57, %20
  %68 = tail call i32 @fputc(i32 10, ptr %0)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_referenced_var(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !24
  %3 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %2) #12
  %4 = tail call fastcc ptr @first_htab_element(ptr noundef %0, ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_referenced_vars_p(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @end_htab_p(ptr noundef %0) #12, !range !25
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @may_be_aliased(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 33
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = and i64 %2, 134217728
  %7 = icmp ne i64 %6, 0
  %8 = and i64 %2, 201326592
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 33554432
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %10, %5
  %16 = and i64 %2, 1048576
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !14
  %21 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 2048
  %24 = icmp eq i32 %23, 0
  %25 = or i1 %7, %24
  %26 = xor i1 %24, true
  %27 = zext i1 %26 to i8
  br i1 %25, label %38, label %29

28:                                               ; preds = %15
  br i1 %7, label %38, label %29

29:                                               ; preds = %18, %10, %28
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 33554432
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = lshr i64 %2, 18
  %36 = trunc i64 %35 to i8
  %37 = and i8 %36, 1
  br label %38

38:                                               ; preds = %18, %28, %29, %34, %1
  %39 = phi i8 [ %27, %18 ], [ 0, %1 ], [ 1, %29 ], [ 1, %28 ], [ %37, %34 ]
  ret i8 %39
}

; Function Attrs: optsize
declare void @dump_variable(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_referenced_var(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = tail call fastcc ptr @next_htab_element(ptr noundef %0) #12
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_points_to_solution(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = load i8, ptr %1, align 8
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 20, i64 1, ptr %0)
  %8 = load i8, ptr %1, align 8
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i8 [ %8, %6 ], [ %3, %2 ]
  %11 = and i8 %10, 2
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 21, i64 1, ptr %0)
  %15 = load i8, ptr %1, align 8
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i8 [ %15, %13 ], [ %10, %9 ]
  %18 = and i8 %17, 4
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 19, i64 1, ptr %0)
  %22 = load i8, ptr %1, align 8
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i8 [ %22, %20 ], [ %17, %16 ]
  %25 = and i8 %24, 8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 16, i64 1, ptr %0)
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.pt_solution, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !36
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 18, i64 1, ptr %0)
  %35 = load ptr, ptr %30, align 8, !tbaa !36
  tail call void @dump_decl_set(ptr noundef %0, ptr noundef %35) #13
  %36 = load i8, ptr %1, align 8
  %37 = and i8 %36, 16
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 23, i64 1, ptr %0)
  br label %41

41:                                               ; preds = %33, %39, %29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !37
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_points_to_info_for(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = load i32, ptr @dump_flags, align 4, !tbaa !39
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %1, i32 noundef %5) #13
  %6 = icmp eq ptr %4, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @dump_points_to_solution(ptr noundef %0, ptr noundef nonnull %4) #12
  br label %10

8:                                                ; preds = %2
  %9 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 20, i64 1, ptr %0)
  br label %10

10:                                               ; preds = %8, %7
  %11 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_htab_element(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #2 {
  store ptr %1, ptr %0, align 8, !tbaa !40
  %3 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !44
  %6 = tail call i64 @htab_size(ptr noundef %1) #13
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !45
  %9 = load ptr, ptr %5, align 8, !tbaa !44
  br label %10

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %15, %14 ], [ %9, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !24
  %13 = icmp ult ptr %12, inttoptr (i64 2 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %15, ptr %5, align 8, !tbaa !44
  %16 = icmp ult ptr %15, %7
  br i1 %16, label %10, label %17, !llvm.loop !46

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %11, %10 ], [ %15, %14 ]
  %19 = icmp ult ptr %18, %7
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 8, !tbaa !24
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %21, %20 ], [ null, %17 ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_referenced_vars(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !28
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !47
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare i64 @htab_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_htab_p(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp uge ptr %3, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_htab_element(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %2, align 8, !tbaa !44
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %5, %1 ], [ %8, %10 ]
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  store ptr %8, ptr %2, align 8, !tbaa !44
  %9 = icmp ult ptr %8, %4
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !24
  %12 = icmp ult ptr %11, inttoptr (i64 2 to ptr)
  br i1 %12, label %6, label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %11, %10 ], [ null, %6 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_alias_info() local_unnamed_addr #2 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !24
  tail call void @dump_alias_info(ptr noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_ptr_info(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %6 [
    i16 10, label %7
    i16 12, label %7
  ]

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 379, ptr noundef nonnull @.str.12) #13
  br label %7

7:                                                ; preds = %1, %1, %6
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 16) #13
  tail call void @pt_solution_reset(ptr noundef %12) #13
  store ptr %12, ptr %8, align 8, !tbaa !14
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ %9, %7 ]
  ret ptr %14
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @pt_solution_reset(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @dump_decl_set(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_points_to_info_for(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !24
  tail call void @dump_points_to_info_for(ptr noundef %2, ptr noundef %0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ao_ref_init(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #8 {
  store ptr %1, ptr %0, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 -1, i64 24, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ao_ref_base(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 4
  %10 = tail call ptr @get_ref_base_and_extent(ptr noundef %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  store ptr %10, ptr %2, align 8, !tbaa !50
  br label %11

11:                                               ; preds = %1, %5
  %12 = phi ptr [ %10, %5 ], [ %3, %1 ]
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @get_ref_base_and_extent(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ao_ref_alias_set(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !51
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !48
  %7 = tail call i32 @get_alias_set(ptr noundef %6) #13
  store i32 %7, ptr %2, align 8, !tbaa !51
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ %3, %1 ]
  ret i32 %9
}

; Function Attrs: optsize
declare i32 @get_alias_set(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ao_ref_init_from_ptr_and_size(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  store ptr null, ptr %0, align 8, !tbaa !48
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 121
  %9 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 2
  br i1 %8, label %10, label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  %13 = call ptr @get_ref_base_and_extent(ptr noundef %12, ptr noundef nonnull %9, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  br label %17

14:                                               ; preds = %3
  %15 = load ptr, ptr @integer_types, align 16, !tbaa !24
  %16 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %15, ptr noundef nonnull %1) #13
  store i64 0, ptr %9, align 8, !tbaa !52
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi ptr [ %13, %10 ], [ %16, %14 ]
  %19 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 1
  store ptr %18, ptr %19, align 8
  %20 = icmp eq ptr %2, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  %22 = call i32 @host_integerp(ptr noundef nonnull %2, i32 noundef 0) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.tree_int_cst, ptr %2, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !14
  %27 = icmp ult i64 %26, 2305843009213693952
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = shl nuw i64 %26, 3
  %30 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 3
  store i64 %29, ptr %30, align 8, !tbaa !53
  %31 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 4
  store i64 %29, ptr %31, align 8, !tbaa !54
  br label %34

32:                                               ; preds = %24, %21, %17
  %33 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, i8 -1, i64 16, i1 false)
  br label %34

34:                                               ; preds = %32, %28
  %35 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 5
  store i32 0, ptr %35, align 8, !tbaa !51
  %36 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 6
  store i32 0, ptr %36, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret void
}

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @refs_may_alias_p_1(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %3
  %10 = load i64, ptr %7, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %17 [
    i16 32, label %21
    i16 34, label %21
    i16 36, label %21
    i16 141, label %12
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %17 [
    i16 32, label %21
    i16 34, label %21
    i16 36, label %21
  ]

17:                                               ; preds = %12, %9
  %18 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %7) #12, !range !25
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  switch i16 %11, label %36 [
    i16 47, label %21
    i16 48, label %21
    i16 49, label %21
    i16 152, label %21
    i16 33, label %21
  ]

21:                                               ; preds = %20, %20, %20, %20, %20, %12, %12, %12, %9, %9, %9, %17, %3
  %22 = load ptr, ptr %1, align 8, !tbaa !48
  %23 = icmp eq ptr %22, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %21
  %25 = load i64, ptr %22, align 8
  %26 = trunc i64 %25 to i16
  switch i16 %26, label %32 [
    i16 32, label %37
    i16 34, label %37
    i16 36, label %37
    i16 141, label %27
  ]

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %22, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !14
  %30 = load i64, ptr %29, align 8
  %31 = trunc i64 %30 to i16
  switch i16 %31, label %32 [
    i16 32, label %37
    i16 34, label %37
    i16 36, label %37
  ]

32:                                               ; preds = %27, %24
  %33 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %22) #12, !range !25
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  switch i16 %26, label %36 [
    i16 47, label %37
    i16 48, label %37
    i16 49, label %37
    i16 152, label %37
    i16 33, label %37
  ]

36:                                               ; preds = %35, %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 786, ptr noundef nonnull @.str.12) #13
  br label %37

37:                                               ; preds = %35, %35, %35, %35, %35, %27, %27, %27, %24, %24, %24, %21, %32, %36
  %38 = tail call ptr @ao_ref_base(ptr noundef nonnull %0) #12
  %39 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !52
  %41 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 4
  %42 = load i64, ptr %41, align 8, !tbaa !54
  %43 = tail call ptr @ao_ref_base(ptr noundef %1) #12
  %44 = getelementptr inbounds %struct.ao_ref_s, ptr %1, i64 0, i32 2
  %45 = load i64, ptr %44, align 8, !tbaa !52
  %46 = getelementptr inbounds %struct.ao_ref_s, ptr %1, i64 0, i32 4
  %47 = load i64, ptr %46, align 8, !tbaa !54
  %48 = load i64, ptr %38, align 8
  %49 = freeze i64 %48
  %50 = trunc i64 %49 to i16
  switch i16 %50, label %51 [
    i16 141, label %233
    i16 33, label %233
  ]

51:                                               ; preds = %37
  %52 = load i64, ptr %43, align 8
  %53 = trunc i64 %52 to i16
  switch i16 %53, label %54 [
    i16 141, label %233
    i16 33, label %233
  ]

54:                                               ; preds = %51
  %55 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %38) #13
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %233

57:                                               ; preds = %54
  %58 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %43) #13
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %233

60:                                               ; preds = %57
  %61 = load i64, ptr %38, align 8
  %62 = trunc i64 %61 to i32
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 29
  br i1 %64, label %233, label %65

65:                                               ; preds = %60
  %66 = load i64, ptr %43, align 8
  %67 = and i64 %66, 65535
  %68 = icmp eq i64 %67, 29
  br i1 %68, label %233, label %69

69:                                               ; preds = %65
  %70 = trunc i64 %61 to i16
  switch i16 %70, label %77 [
    i16 32, label %84
    i16 34, label %84
    i16 36, label %84
    i16 141, label %71
  ]

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.tree_ssa_name, ptr %38, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !14
  %74 = load i64, ptr %73, align 8
  %75 = trunc i64 %74 to i16
  %76 = icmp ult i16 %75, 37
  br i1 %76, label %78, label %84

77:                                               ; preds = %69
  br label %84

78:                                               ; preds = %71
  %79 = trunc i64 %74 to i37
  %80 = and i37 %79, 65535
  %81 = lshr i37 -47244640256, %80
  %82 = and i37 %81, 1
  %83 = icmp ne i37 %82, 0
  br label %84

84:                                               ; preds = %71, %78, %69, %69, %69, %77
  %85 = phi i1 [ true, %69 ], [ true, %69 ], [ true, %69 ], [ false, %77 ], [ %83, %78 ], [ false, %71 ]
  %86 = trunc i64 %66 to i32
  %87 = and i32 %86, 65535
  %88 = trunc i64 %66 to i16
  switch i16 %88, label %97 [
    i16 32, label %94
    i16 34, label %94
    i16 36, label %94
    i16 141, label %89
  ]

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.tree_ssa_name, ptr %43, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !14
  %92 = load i64, ptr %91, align 8
  %93 = trunc i64 %92 to i16
  switch i16 %93, label %97 [
    i16 32, label %94
    i16 34, label %94
    i16 36, label %94
  ]

94:                                               ; preds = %89, %89, %89, %84, %84, %84
  br i1 %85, label %95, label %102

95:                                               ; preds = %94
  %96 = tail call fastcc zeroext i8 @decl_refs_may_alias_p(ptr noundef nonnull %38, i64 noundef %40, i64 noundef %42, ptr noundef nonnull %43, i64 noundef %45, i64 noundef %47) #12, !range !25
  br label %233

97:                                               ; preds = %89, %84
  %98 = add nsw i32 %63, -47
  %99 = icmp ult i32 %98, 3
  %100 = add nsw i32 %87, -47
  %101 = icmp ult i32 %100, 3
  br label %107

102:                                              ; preds = %94
  %103 = add nsw i32 %63, -47
  %104 = icmp ult i32 %103, 3
  %105 = add nsw i32 %87, -47
  %106 = icmp ult i32 %105, 3
  br i1 %104, label %107, label %183

107:                                              ; preds = %102, %97
  %108 = phi ptr [ %43, %97 ], [ %38, %102 ]
  %109 = phi i64 [ %40, %97 ], [ %45, %102 ]
  %110 = phi i64 [ %45, %97 ], [ %40, %102 ]
  %111 = phi i64 [ %42, %97 ], [ %47, %102 ]
  %112 = phi i64 [ %47, %97 ], [ %42, %102 ]
  %113 = phi i1 [ %85, %97 ], [ true, %102 ]
  %114 = phi i1 [ %99, %97 ], [ false, %102 ]
  %115 = phi i1 [ %101, %97 ], [ true, %102 ]
  %116 = phi ptr [ %38, %97 ], [ %43, %102 ]
  %117 = phi ptr [ %1, %97 ], [ %0, %102 ]
  %118 = phi ptr [ %0, %97 ], [ %1, %102 ]
  %119 = and i1 %113, %115
  %120 = load ptr, ptr @cfun, align 8
  %121 = icmp ne ptr %120, null
  %122 = select i1 %119, i1 %121, i1 false
  br i1 %122, label %123, label %183

123:                                              ; preds = %107
  %124 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef nonnull %120) #12, !range !25
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %183, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.tree_exp, ptr %108, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !14
  %129 = load i64, ptr %128, align 8
  %130 = and i64 %129, 65535
  %131 = icmp eq i64 %130, 141
  br i1 %131, label %132, label %183

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.tree_ssa_name, ptr %128, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !14
  %135 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %134) #12, !range !25
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %183, label %137

137:                                              ; preds = %132, %167
  %138 = phi ptr [ %169, %167 ], [ %134, %132 ]
  %139 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %138) #12, !range !56
  %140 = icmp eq i32 %139, 141
  br i1 %140, label %147, label %141

141:                                              ; preds = %137
  %142 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %138) #12, !range !56
  %143 = icmp eq i32 %142, 116
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %138) #12, !range !56
  %146 = icmp eq i32 %145, 113
  br i1 %146, label %147, label %183

147:                                              ; preds = %137, %141, %144
  %148 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %138) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %149 = load i64, ptr %148, align 8
  %150 = trunc i64 %149 to i16
  switch i16 %150, label %172 [
    i16 141, label %151
    i16 121, label %156
  ]

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.tree_common, ptr %148, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !14
  %154 = load i64, ptr %153, align 8
  %155 = trunc i64 %154 to i16
  switch i16 %155, label %172 [
    i16 10, label %167
    i16 12, label %167
  ]

156:                                              ; preds = %147
  %157 = getelementptr inbounds %struct.tree_exp, ptr %148, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !14
  %159 = call ptr @get_ref_base_and_extent(ptr noundef %158, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %160 = load i64, ptr %159, align 8
  %161 = trunc i64 %160 to i16
  switch i16 %161, label %172 [
    i16 32, label %173
    i16 34, label %173
    i16 36, label %173
    i16 141, label %162
  ]

162:                                              ; preds = %156
  %163 = getelementptr inbounds %struct.tree_ssa_name, ptr %159, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !14
  %165 = load i64, ptr %164, align 8
  %166 = trunc i64 %165 to i16
  switch i16 %166, label %172 [
    i16 32, label %173
    i16 34, label %173
    i16 36, label %173
  ]

167:                                              ; preds = %151, %151
  %168 = getelementptr inbounds %struct.tree_ssa_name, ptr %148, i64 0, i32 2
  %169 = load ptr, ptr %168, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  %170 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %169) #12, !range !25
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %183, label %137

172:                                              ; preds = %147, %151, %162, %156
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %183

173:                                              ; preds = %156, %156, %156, %162, %162, %162
  %174 = load i64, ptr %4, align 8, !tbaa !57
  %175 = add nsw i64 %174, %110
  %176 = load i64, ptr %5, align 8, !tbaa !57
  %177 = load i64, ptr %6, align 8
  %178 = icmp ne i64 %176, %177
  %179 = icmp eq i64 %177, -1
  %180 = or i1 %178, %179
  %181 = select i1 %180, i64 -1, i64 %112
  %182 = call fastcc zeroext i8 @decl_refs_may_alias_p(ptr noundef nonnull %116, i64 noundef %109, i64 noundef %111, ptr noundef nonnull %159, i64 noundef %175, i64 noundef %181) #12, !range !25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %233

183:                                              ; preds = %167, %144, %102, %132, %172, %126, %123, %107
  %184 = phi i1 [ %119, %132 ], [ %119, %172 ], [ %119, %126 ], [ %119, %123 ], [ %119, %107 ], [ false, %102 ], [ %119, %144 ], [ %119, %167 ]
  %185 = phi ptr [ %118, %132 ], [ %118, %172 ], [ %118, %126 ], [ %118, %123 ], [ %118, %107 ], [ %0, %102 ], [ %118, %144 ], [ %118, %167 ]
  %186 = phi ptr [ %117, %132 ], [ %117, %172 ], [ %117, %126 ], [ %117, %123 ], [ %117, %107 ], [ %1, %102 ], [ %117, %144 ], [ %117, %167 ]
  %187 = phi ptr [ %116, %132 ], [ %116, %172 ], [ %116, %126 ], [ %116, %123 ], [ %116, %107 ], [ %38, %102 ], [ %116, %144 ], [ %116, %167 ]
  %188 = phi i1 [ %115, %132 ], [ %115, %172 ], [ %115, %126 ], [ %115, %123 ], [ %115, %107 ], [ %106, %102 ], [ %115, %144 ], [ %115, %167 ]
  %189 = phi i1 [ %114, %132 ], [ %114, %172 ], [ %114, %126 ], [ %114, %123 ], [ %114, %107 ], [ %104, %102 ], [ %114, %144 ], [ %114, %167 ]
  %190 = phi i64 [ %112, %132 ], [ %112, %172 ], [ %112, %126 ], [ %112, %123 ], [ %112, %107 ], [ %47, %102 ], [ %112, %144 ], [ %112, %167 ]
  %191 = phi i64 [ %111, %132 ], [ %111, %172 ], [ %111, %126 ], [ %111, %123 ], [ %111, %107 ], [ %42, %102 ], [ %111, %144 ], [ %111, %167 ]
  %192 = phi i64 [ %110, %132 ], [ %110, %172 ], [ %110, %126 ], [ %110, %123 ], [ %110, %107 ], [ %45, %102 ], [ %110, %144 ], [ %110, %167 ]
  %193 = phi i64 [ %109, %132 ], [ %109, %172 ], [ %109, %126 ], [ %109, %123 ], [ %109, %107 ], [ %40, %102 ], [ %109, %144 ], [ %109, %167 ]
  %194 = phi ptr [ %108, %132 ], [ %108, %172 ], [ %108, %126 ], [ %108, %123 ], [ %108, %107 ], [ %43, %102 ], [ %108, %144 ], [ %108, %167 ]
  %195 = icmp ne i8 %2, 0
  %196 = load i32, ptr @flag_strict_aliasing, align 4
  %197 = icmp ne i32 %196, 0
  %198 = select i1 %195, i1 %197, i1 false
  br i1 %198, label %199, label %204

199:                                              ; preds = %183
  %200 = call i32 @ao_ref_alias_set(ptr noundef %185) #12
  %201 = call i32 @ao_ref_alias_set(ptr noundef %186) #12
  %202 = call i32 @alias_sets_conflict_p(i32 noundef %200, i32 noundef %201) #13
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %233, label %204

204:                                              ; preds = %199, %183
  %205 = load ptr, ptr %185, align 8, !tbaa !48
  %206 = icmp eq ptr %205, null
  br i1 %206, label %211, label %207

207:                                              ; preds = %204
  %208 = load i64, ptr %205, align 8
  %209 = and i64 %208, 65535
  %210 = icmp eq i64 %209, 152
  br i1 %210, label %233, label %211

211:                                              ; preds = %207, %204
  %212 = load ptr, ptr %186, align 8, !tbaa !48
  %213 = icmp eq ptr %212, null
  br i1 %213, label %218, label %214

214:                                              ; preds = %211
  %215 = load i64, ptr %212, align 8
  %216 = and i64 %215, 65535
  %217 = icmp eq i64 %216, 152
  br i1 %217, label %233, label %218

218:                                              ; preds = %214, %211
  %219 = sext i1 %195 to i32
  br i1 %184, label %220, label %224

220:                                              ; preds = %218
  %221 = getelementptr inbounds %struct.tree_exp, ptr %194, i64 0, i32 3
  %222 = load ptr, ptr %221, align 8, !tbaa !14
  %223 = call fastcc zeroext i8 @indirect_ref_may_alias_decl_p(ptr noundef %212, ptr noundef %222, i64 noundef %192, i64 noundef %190, i32 noundef %219, ptr noundef %205, ptr noundef nonnull %187, i64 noundef %193, i64 noundef %191, i32 noundef %219) #12, !range !25
  br label %233

224:                                              ; preds = %218
  %225 = and i1 %189, %188
  br i1 %225, label %226, label %232

226:                                              ; preds = %224
  %227 = getelementptr inbounds %struct.tree_exp, ptr %187, i64 0, i32 3
  %228 = load ptr, ptr %227, align 8, !tbaa !14
  %229 = getelementptr inbounds %struct.tree_exp, ptr %194, i64 0, i32 3
  %230 = load ptr, ptr %229, align 8, !tbaa !14
  %231 = call fastcc zeroext i8 @indirect_refs_may_alias_p(ptr noundef %205, ptr noundef %228, i64 noundef %193, i64 noundef %191, i32 noundef %219, ptr noundef %212, ptr noundef %230, i64 noundef %192, i64 noundef %190, i32 noundef %219) #12, !range !25
  br label %233

232:                                              ; preds = %224
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 921, ptr noundef nonnull @.str.12) #13
  br label %233

233:                                              ; preds = %37, %37, %173, %51, %51, %207, %214, %199, %60, %65, %54, %57, %232, %226, %220, %95
  %234 = phi i8 [ %96, %95 ], [ %223, %220 ], [ %231, %226 ], [ 0, %232 ], [ %182, %173 ], [ 0, %57 ], [ 0, %54 ], [ 0, %51 ], [ 0, %37 ], [ 1, %65 ], [ 1, %60 ], [ 0, %199 ], [ 1, %214 ], [ 1, %207 ], [ 0, %51 ], [ 0, %37 ]
  ret i8 %234
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #5 {
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

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @decl_refs_may_alias_p(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #2 {
  %7 = load i64, ptr %0, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %22 [
    i16 32, label %14
    i16 34, label %14
    i16 36, label %14
    i16 141, label %9
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %22 [
    i16 32, label %14
    i16 34, label %14
    i16 36, label %14
  ]

14:                                               ; preds = %9, %9, %9, %6, %6, %6
  %15 = load i64, ptr %3, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %22 [
    i16 32, label %23
    i16 34, label %23
    i16 36, label %23
    i16 141, label %17
  ]

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !14
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %22 [
    i16 32, label %23
    i16 34, label %23
    i16 36, label %23
  ]

22:                                               ; preds = %17, %14, %9, %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 629, ptr noundef nonnull @.str.12) #13
  br label %23

23:                                               ; preds = %17, %17, %17, %14, %14, %14, %22
  %24 = tail call i32 @operand_equal_p(ptr noundef nonnull %0, ptr noundef %3, i32 noundef 0) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call fastcc zeroext i8 @ranges_overlap_p(i64 noundef %1, i64 noundef %2, i64 noundef %4, i64 noundef %5) #12, !range !25
  br label %28

28:                                               ; preds = %23, %26
  %29 = phi i8 [ %27, %26 ], [ 0, %23 ]
  ret i8 %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gimple_in_ssa_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !28
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gimple_df, ptr %3, i64 0, i32 10
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, 1
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %5 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !58
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #12, !range !56
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #12, !range !58
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #12
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #12
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @alias_sets_conflict_p(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @indirect_ref_may_alias_decl_p(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8, i32 noundef %9) unnamed_addr #2 {
  %11 = icmp eq i64 %8, -1
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = add nsw i64 %8, %7
  %14 = tail call fastcc zeroext i8 @ranges_overlap_p(i64 noundef %2, i64 noundef %3, i64 noundef 0, i64 noundef %13) #12, !range !25
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %64, label %16

16:                                               ; preds = %12, %10
  %17 = tail call fastcc zeroext i8 @ptr_deref_may_alias_decl_p(ptr noundef %1, ptr noundef %6) #12
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %64, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !39
  %21 = icmp ne i32 %20, 0
  %22 = icmp eq i32 %4, -1
  %23 = and i1 %22, %21
  br i1 %23, label %24, label %64

24:                                               ; preds = %19
  %25 = tail call i32 @get_deref_alias_set(ptr noundef %1) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %64, label %27

27:                                               ; preds = %24
  %28 = icmp eq i32 %9, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  %30 = tail call i32 @get_alias_set(ptr noundef %6) #13
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %30, %29 ], [ 0, %27 ]
  %33 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !14
  %35 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !14
  %37 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !14
  %39 = tail call fastcc i32 @same_type_for_tbaa(ptr noundef %36, ptr noundef %38) #12, !range !59
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = tail call fastcc zeroext i8 @ranges_overlap_p(i64 noundef %2, i64 noundef %3, i64 noundef %7, i64 noundef %8) #12, !range !25
  br label %64

43:                                               ; preds = %31
  %44 = icmp eq i32 %25, %32
  br i1 %44, label %48, label %45

45:                                               ; preds = %43
  %46 = tail call zeroext i8 @alias_set_subset_of(i32 noundef %25, i32 noundef %32) #13
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %45, %43
  %49 = icmp ne ptr %0, null
  %50 = icmp ne ptr %5, null
  %51 = and i1 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %0) #12, !range !25
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %52
  %56 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %5) #12, !range !25
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %33, align 8, !tbaa !14
  %60 = getelementptr inbounds %struct.tree_common, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !14
  %62 = load ptr, ptr %37, align 8, !tbaa !14
  %63 = tail call fastcc zeroext i8 @aliasing_component_refs_p(ptr noundef nonnull %0, ptr noundef %61, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %5, ptr noundef %62, i64 noundef %7, i64 noundef %8) #12, !range !25
  br label %64

64:                                               ; preds = %48, %52, %55, %45, %24, %19, %16, %12, %58, %41
  %65 = phi i8 [ %42, %41 ], [ %63, %58 ], [ 0, %12 ], [ 0, %16 ], [ 1, %19 ], [ 1, %24 ], [ 0, %45 ], [ 1, %55 ], [ 1, %52 ], [ 1, %48 ]
  ret i8 %65
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @indirect_refs_may_alias_p(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8, i32 noundef %9) unnamed_addr #2 {
  %11 = tail call i32 @operand_equal_p(ptr noundef %1, ptr noundef %6, i32 noundef 0) #13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call fastcc zeroext i8 @ranges_overlap_p(i64 noundef %2, i64 noundef %3, i64 noundef %7, i64 noundef %8) #12, !range !25
  br label %67

15:                                               ; preds = %10
  %16 = tail call fastcc zeroext i8 @ptr_derefs_may_alias_p(ptr noundef %1, ptr noundef %6) #12
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %67, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !39
  %20 = icmp ne i32 %19, 0
  %21 = icmp eq i32 %4, -1
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %67

23:                                               ; preds = %18
  %24 = tail call i32 @get_deref_alias_set(ptr noundef %1) #13
  %25 = icmp ne i32 %24, 0
  %26 = icmp eq i32 %9, -1
  %27 = and i1 %26, %25
  br i1 %27, label %28, label %67

28:                                               ; preds = %23
  %29 = tail call i32 @get_deref_alias_set(ptr noundef %6) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %67, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !14
  %34 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !14
  %36 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !14
  %38 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !14
  %40 = tail call fastcc i32 @same_type_for_tbaa(ptr noundef %35, ptr noundef %39) #12, !range !59
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = tail call fastcc zeroext i8 @ranges_overlap_p(i64 noundef %2, i64 noundef %3, i64 noundef %7, i64 noundef %8) #12, !range !25
  br label %67

44:                                               ; preds = %31
  %45 = icmp eq i32 %24, %29
  br i1 %45, label %49, label %46

46:                                               ; preds = %44
  %47 = tail call i32 @alias_sets_conflict_p(i32 noundef %24, i32 noundef %29) #13
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %46, %44
  %50 = icmp ne ptr %0, null
  %51 = icmp ne ptr %5, null
  %52 = and i1 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %0) #12, !range !25
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %53
  %57 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %5) #12, !range !25
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %32, align 8, !tbaa !14
  %61 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !14
  %63 = load ptr, ptr %36, align 8, !tbaa !14
  %64 = getelementptr inbounds %struct.tree_common, ptr %63, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !14
  %66 = tail call fastcc zeroext i8 @aliasing_component_refs_p(ptr noundef nonnull %0, ptr noundef %62, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %5, ptr noundef %65, i64 noundef %7, i64 noundef %8) #12, !range !25
  br label %67

67:                                               ; preds = %49, %53, %56, %46, %28, %23, %18, %15, %59, %42, %13
  %68 = phi i8 [ %14, %13 ], [ %43, %42 ], [ %66, %59 ], [ 0, %15 ], [ 1, %18 ], [ 1, %23 ], [ 1, %28 ], [ 0, %46 ], [ 1, %56 ], [ 1, %53 ], [ 1, %49 ]
  ret i8 %68
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @ranges_overlap_p(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #9 {
  %5 = icmp ult i64 %0, %2
  br i1 %5, label %11, label %6

6:                                                ; preds = %4
  %7 = icmp eq i64 %3, -1
  %8 = add i64 %3, %2
  %9 = icmp ugt i64 %8, %0
  %10 = or i1 %7, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %6, %4
  %12 = icmp ult i64 %2, %0
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = icmp eq i64 %1, -1
  %15 = add i64 %1, %0
  %16 = icmp ugt i64 %15, %2
  %17 = or i1 %14, %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %11
  br label %19

19:                                               ; preds = %13, %6, %18
  %20 = phi i8 [ 0, %18 ], [ 1, %6 ], [ 1, %13 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !58
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1446, ptr noundef nonnull @.str.12) #13
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #9 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !14
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #12, !range !25
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #12
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !24
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !58
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #12
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !57
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.12) #13
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !58
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #12
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #9 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !39
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ptr_deref_may_alias_decl_p(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %8 [
    i16 141, label %5
    i16 121, label %5
    i16 23, label %5
  ]

5:                                                ; preds = %2, %2, %2
  %6 = load i64, ptr %1, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %8 [
    i16 32, label %9
    i16 34, label %9
    i16 36, label %9
  ]

8:                                                ; preds = %5, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 176, ptr noundef nonnull @.str.12) #13
  br label %9

9:                                                ; preds = %5, %5, %5, %8
  %10 = tail call fastcc zeroext i8 @may_be_aliased(ptr noundef %1) #12, !range !25
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %81, label %12

12:                                               ; preds = %9
  %13 = load i64, ptr %0, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 121
  br i1 %15, label %16, label %48

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !14
  %19 = tail call ptr @get_base_address(ptr noundef %18) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %42, label %21

21:                                               ; preds = %16
  %22 = load i64, ptr %19, align 8
  %23 = trunc i64 %22 to i32
  %24 = and i32 %23, 65535
  %25 = add nsw i32 %24, -47
  %26 = icmp ult i32 %25, 3
  br i1 %26, label %43, label %27

27:                                               ; preds = %21
  %28 = trunc i64 %22 to i16
  switch i16 %28, label %37 [
    i16 32, label %34
    i16 34, label %34
    i16 36, label %34
    i16 141, label %29
  ]

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !14
  %32 = load i64, ptr %31, align 8
  %33 = trunc i64 %32 to i16
  switch i16 %33, label %37 [
    i16 32, label %34
    i16 34, label %34
    i16 36, label %34
  ]

34:                                               ; preds = %29, %29, %29, %27, %27, %27
  %35 = tail call i32 @operand_equal_p(ptr noundef nonnull %19, ptr noundef %1, i32 noundef 0) #13
  %36 = trunc i32 %35 to i8
  br label %81

37:                                               ; preds = %27, %29
  %38 = and i64 %22, 65535
  %39 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !39
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %81, label %42

42:                                               ; preds = %16, %37
  br label %81

43:                                               ; preds = %21
  %44 = getelementptr inbounds %struct.tree_exp, ptr %19, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !14
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 65535
  br label %48

48:                                               ; preds = %43, %12
  %49 = phi i64 [ %47, %43 ], [ %14, %12 ]
  %50 = phi ptr [ %45, %43 ], [ %0, %12 ]
  %51 = icmp eq i64 %49, 23
  br i1 %51, label %81, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.tree_ssa_name, ptr %50, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !14
  %55 = icmp eq ptr %54, null
  br i1 %55, label %81, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %58 = load i64, ptr %57, align 8
  %59 = and i64 %58, 536870912
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %79, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !14
  %64 = getelementptr inbounds %struct.tree_type, ptr %63, i64 0, i32 6
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 8192
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %61
  %69 = load i8, ptr %54, align 8
  %70 = and i8 %69, 32
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.pt_solution, ptr %54, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !60
  %75 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %76 = load i32, ptr %75, align 4, !tbaa !14
  %77 = tail call i32 @bitmap_bit_p(ptr noundef %74, i32 noundef %76) #13
  %78 = trunc i32 %77 to i8
  br label %81

79:                                               ; preds = %68, %61, %56
  %80 = tail call zeroext i8 @pt_solution_includes(ptr noundef nonnull %54, ptr noundef nonnull %1) #13
  br label %81

81:                                               ; preds = %37, %42, %34, %52, %48, %9, %79, %72
  %82 = phi i8 [ %78, %72 ], [ %80, %79 ], [ 0, %9 ], [ 1, %48 ], [ 1, %52 ], [ 0, %37 ], [ 1, %42 ], [ %36, %34 ]
  ret i8 %82
}

; Function Attrs: optsize
declare i32 @get_deref_alias_set(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @same_type_for_tbaa(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %10
  %15 = icmp eq ptr %8, %12
  br i1 %15, label %29, label %16

16:                                               ; preds = %14
  %17 = load i64, ptr %4, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 15
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i64, ptr %6, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 15
  br i1 %23, label %29, label %24

24:                                               ; preds = %20, %16
  %25 = tail call i32 @get_alias_set(ptr noundef nonnull %4) #13
  %26 = tail call i32 @get_alias_set(ptr noundef nonnull %6) #13
  %27 = icmp eq i32 %25, %26
  %28 = sext i1 %27 to i32
  br label %29

29:                                               ; preds = %24, %20, %14, %2, %10
  %30 = phi i32 [ -1, %10 ], [ -1, %2 ], [ 1, %14 ], [ -1, %20 ], [ %28, %24 ]
  ret i32 %30
}

; Function Attrs: optsize
declare zeroext i8 @alias_set_subset_of(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @aliasing_component_refs_p(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, i64 noundef %6, i64 noundef %7) unnamed_addr #2 {
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store ptr %0, ptr %9, align 8, !tbaa !24
  store ptr %4, ptr %10, align 8, !tbaa !24
  %17 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %4) #12, !range !25
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %8, %27
  %20 = phi ptr [ %29, %27 ], [ %4, %8 ]
  %21 = phi ptr [ %28, %27 ], [ %10, %8 ]
  %22 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !14
  %24 = tail call fastcc i32 @same_type_for_tbaa(ptr noundef %23, ptr noundef %1) #12, !range !59
  %25 = icmp eq i32 %24, 0
  %26 = load ptr, ptr %21, align 8, !tbaa !24
  br i1 %25, label %27, label %32

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.tree_exp, ptr %26, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !24
  %30 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %29) #12, !range !25
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %19, !llvm.loop !62

32:                                               ; preds = %27, %19, %8
  %33 = phi ptr [ %4, %8 ], [ %29, %27 ], [ %26, %19 ]
  %34 = phi ptr [ %10, %8 ], [ %28, %27 ], [ %21, %19 ]
  %35 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !14
  %37 = tail call fastcc i32 @same_type_for_tbaa(ptr noundef %36, ptr noundef %1) #12, !range !59
  switch i32 %37, label %38 [
    i32 -1, label %73
    i32 1, label %41
  ]

38:                                               ; preds = %32
  %39 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #12, !range !25
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %60, label %47

41:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #14
  %42 = load ptr, ptr %34, align 8, !tbaa !24
  %43 = call ptr @get_ref_base_and_extent(ptr noundef %42, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13) #13
  %44 = load i64, ptr %11, align 8, !tbaa !57
  %45 = sub nsw i64 %6, %44
  %46 = call fastcc zeroext i8 @ranges_overlap_p(i64 noundef %2, i64 noundef %3, i64 noundef %45, i64 noundef %7) #12, !range !25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #14
  br label %73

47:                                               ; preds = %38, %55
  %48 = phi ptr [ %57, %55 ], [ %0, %38 ]
  %49 = phi ptr [ %56, %55 ], [ %9, %38 ]
  %50 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !14
  %52 = tail call fastcc i32 @same_type_for_tbaa(ptr noundef %51, ptr noundef %5) #12, !range !59
  %53 = icmp eq i32 %52, 0
  %54 = load ptr, ptr %49, align 8, !tbaa !24
  br i1 %53, label %55, label %60

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.tree_exp, ptr %54, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !24
  %58 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %57) #12, !range !25
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %47, !llvm.loop !63

60:                                               ; preds = %55, %47, %38
  %61 = phi ptr [ %0, %38 ], [ %57, %55 ], [ %54, %47 ]
  %62 = phi ptr [ %9, %38 ], [ %56, %55 ], [ %49, %47 ]
  %63 = getelementptr inbounds %struct.tree_common, ptr %61, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !14
  %65 = tail call fastcc i32 @same_type_for_tbaa(ptr noundef %64, ptr noundef %5) #12, !range !59
  switch i32 %65, label %72 [
    i32 -1, label %73
    i32 1, label %66
  ]

66:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #14
  %67 = load ptr, ptr %62, align 8, !tbaa !24
  %68 = call ptr @get_ref_base_and_extent(ptr noundef %67, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16) #13
  %69 = load i64, ptr %14, align 8, !tbaa !57
  %70 = sub nsw i64 %2, %69
  %71 = call fastcc zeroext i8 @ranges_overlap_p(i64 noundef %70, i64 noundef %3, i64 noundef %6, i64 noundef %7) #12, !range !25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #14
  br label %73

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %60, %32, %72, %66, %41
  %74 = phi i8 [ %46, %41 ], [ %71, %66 ], [ 0, %72 ], [ 1, %32 ], [ 1, %60 ]
  ret i8 %74
}

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @pt_solution_includes(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ptr_derefs_may_alias_p(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #2 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %8 [
    i16 141, label %5
    i16 121, label %5
    i16 23, label %5
  ]

5:                                                ; preds = %2, %2, %2
  %6 = load i64, ptr %1, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %8 [
    i16 141, label %10
    i16 121, label %10
    i16 23, label %10
  ]

8:                                                ; preds = %5, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 236, ptr noundef nonnull @.str.12) #13
  %9 = load i64, ptr %0, align 8
  br label %10

10:                                               ; preds = %5, %5, %5, %8
  %11 = phi i64 [ %3, %5 ], [ %3, %5 ], [ %3, %5 ], [ %9, %8 ]
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 121
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  %17 = tail call ptr @get_base_address(ptr noundef %16) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %103, label %19

19:                                               ; preds = %14
  %20 = load i64, ptr %17, align 8
  %21 = trunc i64 %20 to i32
  %22 = and i32 %21, 65535
  %23 = add nsw i32 %22, -47
  %24 = icmp ult i32 %23, 3
  br i1 %24, label %34, label %25

25:                                               ; preds = %19
  %26 = trunc i64 %20 to i16
  switch i16 %26, label %103 [
    i16 32, label %32
    i16 34, label %32
    i16 36, label %32
    i16 141, label %27
  ]

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %17, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !14
  %30 = load i64, ptr %29, align 8
  %31 = trunc i64 %30 to i16
  switch i16 %31, label %103 [
    i16 32, label %32
    i16 34, label %32
    i16 36, label %32
  ]

32:                                               ; preds = %27, %27, %27, %25, %25, %25
  %33 = tail call fastcc zeroext i8 @ptr_deref_may_alias_decl_p(ptr noundef %1, ptr noundef nonnull %17) #12
  br label %103

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !14
  br label %37

37:                                               ; preds = %34, %10
  %38 = phi ptr [ %36, %34 ], [ %0, %10 ]
  %39 = load i64, ptr %1, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 121
  br i1 %41, label %42, label %65

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !14
  %45 = tail call ptr @get_base_address(ptr noundef %44) #13
  %46 = icmp eq ptr %45, null
  br i1 %46, label %103, label %47

47:                                               ; preds = %42
  %48 = load i64, ptr %45, align 8
  %49 = trunc i64 %48 to i32
  %50 = and i32 %49, 65535
  %51 = add nsw i32 %50, -47
  %52 = icmp ult i32 %51, 3
  br i1 %52, label %62, label %53

53:                                               ; preds = %47
  %54 = trunc i64 %48 to i16
  switch i16 %54, label %103 [
    i16 32, label %60
    i16 34, label %60
    i16 36, label %60
    i16 141, label %55
  ]

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.tree_ssa_name, ptr %45, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !14
  %58 = load i64, ptr %57, align 8
  %59 = trunc i64 %58 to i16
  switch i16 %59, label %103 [
    i16 32, label %60
    i16 34, label %60
    i16 36, label %60
  ]

60:                                               ; preds = %55, %55, %55, %53, %53, %53
  %61 = tail call fastcc zeroext i8 @ptr_deref_may_alias_decl_p(ptr noundef %38, ptr noundef nonnull %45) #12
  br label %103

62:                                               ; preds = %47
  %63 = getelementptr inbounds %struct.tree_exp, ptr %45, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !14
  br label %65

65:                                               ; preds = %62, %37
  %66 = phi ptr [ %64, %62 ], [ %1, %37 ]
  %67 = load i64, ptr %38, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 23
  br i1 %69, label %103, label %70

70:                                               ; preds = %65
  %71 = load i64, ptr %66, align 8
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 23
  %74 = icmp eq ptr %38, %66
  %75 = select i1 %73, i1 true, i1 %74
  br i1 %75, label %103, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.tree_ssa_name, ptr %38, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !14
  %79 = getelementptr inbounds %struct.tree_ssa_name, ptr %66, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !14
  %81 = icmp ne ptr %78, null
  %82 = icmp ne ptr %80, null
  %83 = select i1 %81, i1 %82, i1 false
  br i1 %83, label %84, label %103

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !14
  %87 = getelementptr inbounds %struct.tree_type, ptr %86, i64 0, i32 6
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, 8192
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.tree_common, ptr %66, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !14
  %94 = getelementptr inbounds %struct.tree_type, ptr %93, i64 0, i32 6
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, 8192
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %91
  %99 = tail call zeroext i8 @pt_solutions_same_restrict_base(ptr noundef nonnull %78, ptr noundef nonnull %80) #13
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %98, %91, %84
  %102 = tail call zeroext i8 @pt_solutions_intersect(ptr noundef nonnull %78, ptr noundef nonnull %80) #13
  br label %103

103:                                              ; preds = %53, %55, %42, %60, %25, %27, %14, %32, %98, %76, %65, %70, %101
  %104 = phi i8 [ %102, %101 ], [ 1, %70 ], [ 1, %65 ], [ 1, %76 ], [ 0, %98 ], [ 1, %25 ], [ 1, %27 ], [ 1, %14 ], [ %33, %32 ], [ 1, %53 ], [ 1, %55 ], [ 1, %42 ], [ %61, %60 ]
  ret i8 %104
}

; Function Attrs: optsize
declare zeroext i8 @pt_solutions_same_restrict_base(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @pt_solutions_intersect(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @refs_may_alias_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ao_ref_s, align 8
  %4 = alloca %struct.ao_ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #14
  call void @ao_ref_init(ptr noundef nonnull %3, ptr noundef %0) #12
  call void @ao_ref_init(ptr noundef nonnull %4, ptr noundef %1) #12
  %5 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 1) #12
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr @alias_stats.1, ptr @alias_stats.0
  %8 = load i64, ptr %7, align 8, !tbaa !57
  %9 = add i64 %8, 1
  store i64 %9, ptr %7, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #14
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @refs_anti_dependent_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ao_ref_s, align 8
  %4 = alloca %struct.ao_ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #14
  call void @ao_ref_init(ptr noundef nonnull %3, ptr noundef %0) #12
  call void @ao_ref_init(ptr noundef nonnull %4, ptr noundef %1) #12
  %5 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 0) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #14
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @refs_output_dependent_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ao_ref_s, align 8
  %4 = alloca %struct.ao_ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #14
  call void @ao_ref_init(ptr noundef nonnull %3, ptr noundef %0) #12
  call void @ao_ref_init(ptr noundef nonnull %4, ptr noundef %1) #12
  %5 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 0) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #14
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ref_maybe_used_by_stmt_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #12, !range !25
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %2
  %6 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #13
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %5
  %9 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #12
  %10 = tail call zeroext i8 @is_gimple_reg(ptr noundef %9) #13
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %9) #13
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #12, !range !56
  %17 = icmp eq i32 %16, 51
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = tail call zeroext i8 @refs_may_alias_p(ptr noundef %9, ptr noundef %1) #12
  br label %25

20:                                               ; preds = %2
  %21 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #12, !range !25
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = tail call fastcc zeroext i8 @ref_maybe_used_by_call_p(ptr noundef %0, ptr noundef %1) #12
  br label %25

25:                                               ; preds = %20, %18, %5, %15, %12, %8, %23
  %26 = phi i8 [ %24, %23 ], [ %19, %18 ], [ 0, %5 ], [ 0, %15 ], [ 0, %12 ], [ 0, %8 ], [ 1, %20 ]
  ret i8 %26
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !58
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ref_maybe_used_by_call_p(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.ao_ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #14
  call void @ao_ref_init(ptr noundef nonnull %3, ptr noundef %1) #12
  %4 = call fastcc zeroext i8 @ref_maybe_used_by_call_p_1(ptr noundef %0, ptr noundef nonnull %3) #12
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, ptr @alias_stats.3, ptr @alias_stats.2
  %7 = load i64, ptr %6, align 8, !tbaa !57
  %8 = add i64 %7, 1
  store i64 %8, ptr %6, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #14
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ref_maybe_used_by_call_p_1(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.ao_ref_s, align 8
  %4 = alloca %struct.ao_ref_s, align 8
  %5 = alloca %struct.ao_ref_s, align 8
  %6 = tail call i32 @gimple_call_flags(ptr noundef %0) #13
  %7 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #12
  %8 = icmp ne ptr %7, null
  %9 = and i32 %6, 513
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %12, label %137

12:                                               ; preds = %2
  %13 = tail call ptr @ao_ref_base(ptr noundef %1) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %165, label %15

15:                                               ; preds = %12
  %16 = load i64, ptr %13, align 8
  %17 = and i64 %16, 65535
  %18 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !39
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = tail call fastcc zeroext i8 @may_be_aliased(ptr noundef nonnull %13) #12, !range !25
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %13) #12, !range !25
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %137, label %27

27:                                               ; preds = %24, %21, %15
  %28 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %64, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.tree_function_decl, ptr %28, i64 0, i32 5
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 6144
  %34 = icmp eq i32 %33, 6144
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = and i32 %32, 2047
  switch i32 %36, label %50 [
    i32 341, label %37
    i32 349, label %37
    i32 330, label %37
    i32 331, label %37
    i32 332, label %37
    i32 335, label %37
    i32 336, label %37
    i32 338, label %37
    i32 347, label %37
    i32 325, label %46
    i32 455, label %165
    i32 491, label %165
    i32 422, label %165
    i32 333, label %165
    i32 78, label %165
    i32 79, label %165
    i32 80, label %165
    i32 84, label %165
    i32 85, label %165
    i32 86, label %165
    i32 123, label %165
    i32 124, label %165
    i32 125, label %165
    i32 159, label %165
    i32 160, label %165
    i32 161, label %165
    i32 192, label %165
    i32 193, label %165
    i32 194, label %165
    i32 220, label %165
    i32 221, label %165
    i32 222, label %165
  ]

37:                                               ; preds = %35, %35, %35, %35, %35, %35, %35, %35, %35
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #14
  %38 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #12
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 2) #12
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi ptr [ %41, %40 ], [ null, %37 ]
  %44 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #12
  call void @ao_ref_init_from_ptr_and_size(ptr noundef nonnull %3, ptr noundef %44, ptr noundef %43) #12
  %45 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 0) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #14
  br label %165

46:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #14
  %47 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 2) #12
  %48 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #12
  call void @ao_ref_init_from_ptr_and_size(ptr noundef nonnull %4, ptr noundef %48, ptr noundef %47) #12
  %49 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %4, ptr noundef %1, i8 noundef zeroext 0) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #14
  br label %165

50:                                               ; preds = %35, %30
  %51 = load i64, ptr %13, align 8
  %52 = and i64 %51, 201392127
  %53 = icmp ne i64 %52, 67108896
  %54 = or i1 %29, %53
  br i1 %54, label %64, label %55

55:                                               ; preds = %50
  %56 = tail call ptr @cgraph_node(ptr noundef nonnull %28) #13
  %57 = tail call ptr @ipa_reference_get_not_read_global(ptr noundef %56) #13
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.tree_decl_minimal, ptr %13, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !14
  %62 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %57, i32 noundef %61) #13
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %137

64:                                               ; preds = %27, %50, %59, %55
  %65 = and i32 %6, 519
  %66 = icmp eq i32 %65, 0
  %67 = load i64, ptr %13, align 8
  %68 = and i64 %67, 65535
  %69 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !39
  %71 = icmp eq i32 %70, 3
  br i1 %66, label %108, label %72

72:                                               ; preds = %64
  br i1 %71, label %73, label %76

73:                                               ; preds = %72
  %74 = tail call fastcc zeroext i8 @is_call_used(ptr noundef nonnull %13) #12, !range !25
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %137, label %165

76:                                               ; preds = %72
  %77 = trunc i64 %67 to i32
  %78 = and i32 %77, 65535
  %79 = add nsw i32 %78, -47
  %80 = icmp ult i32 %79, 3
  br i1 %80, label %81, label %165

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !14
  %84 = load i64, ptr %83, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 141
  br i1 %86, label %87, label %165

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.tree_ssa_name, ptr %83, i64 0, i32 4
  %89 = load ptr, ptr %88, align 8, !tbaa !14
  %90 = icmp eq ptr %89, null
  br i1 %90, label %165, label %91

91:                                               ; preds = %87
  %92 = tail call zeroext i8 @pt_solution_includes_global(ptr noundef nonnull %89) #13
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %165

94:                                               ; preds = %91
  %95 = load ptr, ptr @cfun, align 8, !tbaa !24
  %96 = getelementptr inbounds %struct.function, ptr %95, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !28
  %98 = getelementptr inbounds %struct.gimple_df, ptr %97, i64 0, i32 5
  %99 = tail call zeroext i8 @pt_solutions_intersect(ptr noundef nonnull %98, ptr noundef nonnull %89) #13
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %165

101:                                              ; preds = %94
  %102 = load ptr, ptr @cfun, align 8, !tbaa !24
  %103 = getelementptr inbounds %struct.function, ptr %102, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !28
  %105 = getelementptr inbounds %struct.gimple_df, ptr %104, i64 0, i32 4
  %106 = tail call zeroext i8 @pt_solutions_intersect(ptr noundef nonnull %105, ptr noundef nonnull %89) #13
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %137, label %165

108:                                              ; preds = %64
  br i1 %71, label %109, label %112

109:                                              ; preds = %108
  %110 = tail call fastcc zeroext i8 @is_call_clobbered(ptr noundef nonnull %13) #12, !range !25
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %137, label %165

112:                                              ; preds = %108
  %113 = trunc i64 %67 to i32
  %114 = and i32 %113, 65535
  %115 = add nsw i32 %114, -47
  %116 = icmp ult i32 %115, 3
  br i1 %116, label %117, label %165

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !14
  %120 = load i64, ptr %119, align 8
  %121 = and i64 %120, 65535
  %122 = icmp eq i64 %121, 141
  br i1 %122, label %123, label %165

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.tree_ssa_name, ptr %119, i64 0, i32 4
  %125 = load ptr, ptr %124, align 8, !tbaa !14
  %126 = icmp eq ptr %125, null
  br i1 %126, label %165, label %127

127:                                              ; preds = %123
  %128 = tail call zeroext i8 @pt_solution_includes_global(ptr noundef nonnull %125) #13
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %165

130:                                              ; preds = %127
  %131 = load ptr, ptr @cfun, align 8, !tbaa !24
  %132 = getelementptr inbounds %struct.function, ptr %131, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !28
  %134 = getelementptr inbounds %struct.gimple_df, ptr %133, i64 0, i32 4
  %135 = tail call zeroext i8 @pt_solutions_intersect(ptr noundef nonnull %134, ptr noundef nonnull %125) #13
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %165

137:                                              ; preds = %59, %130, %101, %2, %73, %109, %24
  %138 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #12
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %165, label %140

140:                                              ; preds = %137, %161
  %141 = phi i32 [ %162, %161 ], [ 0, %137 ]
  %142 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %141) #12
  %143 = load i64, ptr %142, align 8
  %144 = and i64 %143, 65535
  %145 = icmp eq i64 %144, 150
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.tree_exp, ptr %142, i64 0, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !14
  %149 = load i64, ptr %148, align 8
  %150 = and i64 %149, 65535
  br label %151

151:                                              ; preds = %146, %140
  %152 = phi i64 [ %150, %146 ], [ %144, %140 ]
  %153 = phi ptr [ %148, %146 ], [ %142, %140 ]
  %154 = icmp eq i64 %152, 141
  br i1 %154, label %161, label %155

155:                                              ; preds = %151
  %156 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %153) #13
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #14
  call void @ao_ref_init(ptr noundef nonnull %5, ptr noundef nonnull %153) #12
  %159 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %5, ptr noundef %1, i8 noundef zeroext 1) #12
  %160 = icmp eq i8 %159, 0
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #14
  br i1 %160, label %161, label %165

161:                                              ; preds = %158, %155, %151
  %162 = add nuw i32 %141, 1
  %163 = call fastcc i32 @gimple_call_num_args(ptr noundef %0) #12
  %164 = icmp ult i32 %162, %163
  br i1 %164, label %140, label %165, !llvm.loop !64

165:                                              ; preds = %158, %161, %137, %112, %76, %117, %123, %130, %127, %109, %81, %87, %101, %94, %91, %73, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %12, %46, %42
  %166 = phi i8 [ %49, %46 ], [ %45, %42 ], [ 1, %12 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 1, %73 ], [ 1, %91 ], [ 1, %94 ], [ 1, %101 ], [ 1, %87 ], [ 1, %76 ], [ 1, %81 ], [ 1, %109 ], [ 1, %127 ], [ 1, %130 ], [ 1, %123 ], [ 1, %112 ], [ 1, %117 ], [ 0, %137 ], [ 1, %158 ], [ 0, %161 ]
  ret i8 %166
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_chain(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #12
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #5 {
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
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #12
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #12
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #12
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @ipa_reference_get_not_read_global(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_call_used(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call fastcc zeroext i8 @is_call_clobbered(ptr noundef %0) #12, !range !25
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @may_be_aliased(ptr noundef %0) #12, !range !25
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @cfun, align 8, !tbaa !24
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !28
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 5
  %12 = tail call zeroext i8 @pt_solution_includes(ptr noundef nonnull %11, ptr noundef %0) #13
  %13 = icmp ne i8 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %4, %7, %1
  %16 = phi i8 [ 1, %1 ], [ 0, %4 ], [ %14, %7 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_call_clobbered(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %0) #12, !range !25
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @may_be_aliased(ptr noundef %0) #12, !range !25
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @cfun, align 8, !tbaa !24
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !28
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 4
  %12 = tail call zeroext i8 @pt_solution_includes(ptr noundef nonnull %11, ptr noundef %0) #13
  %13 = icmp ne i8 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %4, %7, %1
  %16 = phi i8 [ 1, %1 ], [ 0, %4 ], [ %14, %7 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #12
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !14
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ao_ref_s, align 8
  %4 = alloca %struct.ao_ref_s, align 8
  %5 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #12, !range !25
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %8) #13
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #14
  call void @ao_ref_init(ptr noundef nonnull %3, ptr noundef nonnull %8) #12
  %14 = call zeroext i8 @refs_may_alias_p_1(ptr noundef %1, ptr noundef nonnull %3, i8 noundef zeroext 1) #12
  %15 = icmp eq i8 %14, 0
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #14
  br i1 %15, label %16, label %28

16:                                               ; preds = %13, %10, %7
  %17 = call fastcc zeroext i8 @call_may_clobber_ref_p_1(ptr noundef %0, ptr noundef %1) #12
  br label %28

18:                                               ; preds = %2
  %19 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #12, !range !25
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #14
  %22 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #12
  call void @ao_ref_init(ptr noundef nonnull %4, ptr noundef %22) #12
  %23 = call zeroext i8 @refs_may_alias_p_1(ptr noundef %1, ptr noundef nonnull %4, i8 noundef zeroext 1) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #14
  br label %28

24:                                               ; preds = %18
  %25 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !58
  %26 = icmp eq i32 %25, 7
  %27 = zext i1 %26 to i8
  br label %28

28:                                               ; preds = %24, %16, %13, %21
  %29 = phi i8 [ %23, %21 ], [ %17, %16 ], [ 1, %13 ], [ %27, %24 ]
  ret i8 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #12
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @call_may_clobber_ref_p_1(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.ao_ref_s, align 8
  %4 = alloca %struct.ao_ref_s, align 8
  %5 = tail call i32 @gimple_call_flags(ptr noundef %0) #13
  %6 = and i32 %5, 519
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %163

8:                                                ; preds = %2
  %9 = tail call ptr @ao_ref_base(ptr noundef %1) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %163, label %11

11:                                               ; preds = %8
  %12 = load i64, ptr %9, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 141
  br i1 %14, label %163, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %13
  %17 = load i32, ptr %16, align 4, !tbaa !39
  switch i32 %17, label %27 [
    i32 1, label %163
    i32 3, label %18
  ]

18:                                               ; preds = %15
  %19 = tail call fastcc zeroext i8 @may_be_aliased(ptr noundef nonnull %9) #12, !range !25
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = and i64 %12, 1048576
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %163

24:                                               ; preds = %21
  %25 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %9) #12, !range !25
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %163, label %27

27:                                               ; preds = %15, %24, %18
  %28 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %129, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.tree_function_decl, ptr %28, i64 0, i32 5
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 6144
  %34 = icmp eq i32 %33, 6144
  br i1 %34, label %35, label %116

35:                                               ; preds = %30
  %36 = and i32 %32, 2047
  switch i32 %36, label %116 [
    i32 341, label %37
    i32 349, label %37
    i32 330, label %37
    i32 331, label %37
    i32 332, label %37
    i32 335, label %37
    i32 336, label %37
    i32 338, label %37
    i32 347, label %37
    i32 333, label %37
    i32 325, label %46
    i32 491, label %50
    i32 422, label %50
    i32 455, label %87
    i32 84, label %90
    i32 85, label %90
    i32 86, label %90
    i32 123, label %90
    i32 124, label %90
    i32 125, label %90
    i32 78, label %97
    i32 79, label %97
    i32 80, label %97
    i32 159, label %97
    i32 160, label %97
    i32 161, label %97
    i32 192, label %100
    i32 193, label %100
    i32 194, label %100
    i32 220, label %107
    i32 221, label %107
    i32 222, label %107
  ]

37:                                               ; preds = %35, %35, %35, %35, %35, %35, %35, %35, %35, %35
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #14
  %38 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #12
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 2) #12
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi ptr [ %41, %40 ], [ null, %37 ]
  %44 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #12
  call void @ao_ref_init_from_ptr_and_size(ptr noundef nonnull %3, ptr noundef %44, ptr noundef %43) #12
  %45 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 0) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #14
  br label %163

46:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #14
  %47 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 2) #12
  %48 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #12
  call void @ao_ref_init_from_ptr_and_size(ptr noundef nonnull %4, ptr noundef %48, ptr noundef %47) #12
  %49 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %4, ptr noundef %1, i8 noundef zeroext 0) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #14
  br label %163

50:                                               ; preds = %35, %35
  %51 = load i32, ptr @flag_errno_math, align 4, !tbaa !39
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %163, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !14
  %56 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !24
  %57 = icmp eq ptr %55, %56
  br i1 %57, label %58, label %163

58:                                               ; preds = %53
  %59 = load i64, ptr %9, align 8
  %60 = and i64 %59, 65535
  %61 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !39
  %63 = icmp eq i32 %62, 3
  %64 = and i64 %59, 67108864
  %65 = icmp eq i64 %64, 0
  %66 = and i1 %63, %65
  br i1 %66, label %163, label %67

67:                                               ; preds = %58
  %68 = trunc i64 %59 to i32
  %69 = and i32 %68, 65535
  %70 = add nsw i32 %69, -47
  %71 = icmp ult i32 %70, 3
  br i1 %71, label %72, label %163

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !14
  %75 = load i64, ptr %74, align 8
  %76 = and i64 %75, 65535
  %77 = icmp eq i64 %76, 141
  br i1 %77, label %78, label %163

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.tree_ssa_name, ptr %74, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !14
  %81 = icmp eq ptr %80, null
  br i1 %81, label %163, label %82

82:                                               ; preds = %78
  %83 = load i8, ptr %80, align 8
  %84 = and i8 %83, 3
  %85 = icmp ne i8 %84, 0
  %86 = zext i1 %85 to i8
  br label %163

87:                                               ; preds = %35
  %88 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #12
  %89 = tail call fastcc zeroext i8 @ptr_deref_may_alias_ref_p_1(ptr noundef %88, ptr noundef %1) #12
  br label %163

90:                                               ; preds = %35, %35, %35, %35, %35, %35
  %91 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #12
  %92 = tail call fastcc zeroext i8 @ptr_deref_may_alias_ref_p_1(ptr noundef %91, ptr noundef %1) #12
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %163

94:                                               ; preds = %90
  %95 = load i32, ptr @flag_errno_math, align 4, !tbaa !39
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %163, label %116

97:                                               ; preds = %35, %35, %35, %35, %35, %35
  %98 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #12
  %99 = tail call fastcc zeroext i8 @ptr_deref_may_alias_ref_p_1(ptr noundef %98, ptr noundef %1) #12
  br label %163

100:                                              ; preds = %35, %35, %35
  %101 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 2) #12
  %102 = tail call fastcc zeroext i8 @ptr_deref_may_alias_ref_p_1(ptr noundef %101, ptr noundef %1) #12
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %163

104:                                              ; preds = %100
  %105 = load i32, ptr @flag_errno_math, align 4, !tbaa !39
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %163, label %116

107:                                              ; preds = %35, %35, %35
  %108 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #12
  %109 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 2) #12
  %110 = tail call fastcc zeroext i8 @ptr_deref_may_alias_ref_p_1(ptr noundef %108, ptr noundef %1) #12
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %163

112:                                              ; preds = %107
  %113 = tail call fastcc zeroext i8 @ptr_deref_may_alias_ref_p_1(ptr noundef %109, ptr noundef %1) #12
  %114 = icmp ne i8 %113, 0
  %115 = zext i1 %114 to i8
  br label %163

116:                                              ; preds = %104, %94, %35, %30
  %117 = load i64, ptr %9, align 8
  %118 = and i64 %117, 201392127
  %119 = icmp eq i64 %118, 67108896
  br i1 %119, label %120, label %129

120:                                              ; preds = %116
  %121 = tail call ptr @cgraph_node(ptr noundef nonnull %28) #13
  %122 = tail call ptr @ipa_reference_get_not_written_global(ptr noundef %121) #13
  %123 = icmp eq ptr %122, null
  br i1 %123, label %129, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.tree_decl_minimal, ptr %9, i64 0, i32 2
  %126 = load i32, ptr %125, align 4, !tbaa !14
  %127 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %122, i32 noundef %126) #13
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %163

129:                                              ; preds = %124, %120, %27, %116
  %130 = load i64, ptr %9, align 8
  %131 = and i64 %130, 65535
  %132 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !39
  %134 = icmp eq i32 %133, 3
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = tail call fastcc zeroext i8 @is_call_clobbered(ptr noundef nonnull %9) #12, !range !25
  br label %163

137:                                              ; preds = %129
  %138 = trunc i64 %130 to i32
  %139 = and i32 %138, 65535
  %140 = add nsw i32 %139, -47
  %141 = icmp ult i32 %140, 3
  br i1 %141, label %142, label %163

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !14
  %145 = load i64, ptr %144, align 8
  %146 = and i64 %145, 65535
  %147 = icmp eq i64 %146, 141
  br i1 %147, label %148, label %163

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.tree_ssa_name, ptr %144, i64 0, i32 4
  %150 = load ptr, ptr %149, align 8, !tbaa !14
  %151 = icmp eq ptr %150, null
  br i1 %151, label %163, label %152

152:                                              ; preds = %148
  %153 = tail call zeroext i8 @pt_solution_includes_global(ptr noundef nonnull %150) #13
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %152
  %156 = load ptr, ptr @cfun, align 8, !tbaa !24
  %157 = getelementptr inbounds %struct.function, ptr %156, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !28
  %159 = getelementptr inbounds %struct.gimple_df, ptr %158, i64 0, i32 4
  %160 = tail call zeroext i8 @pt_solutions_intersect(ptr noundef nonnull %159, ptr noundef nonnull %150) #13
  %161 = icmp ne i8 %160, 0
  %162 = zext i1 %161 to i8
  br label %163

163:                                              ; preds = %100, %90, %78, %72, %67, %124, %50, %53, %82, %58, %137, %142, %148, %155, %152, %107, %112, %21, %24, %15, %11, %8, %2, %94, %104, %135, %97, %87, %46, %42
  %164 = phi i8 [ %136, %135 ], [ 0, %104 ], [ %99, %97 ], [ 0, %94 ], [ %89, %87 ], [ %49, %46 ], [ %45, %42 ], [ 0, %2 ], [ 1, %8 ], [ 0, %15 ], [ 0, %11 ], [ 0, %24 ], [ 0, %21 ], [ 1, %107 ], [ %115, %112 ], [ 1, %148 ], [ 1, %152 ], [ %162, %155 ], [ 1, %137 ], [ 1, %142 ], [ %86, %82 ], [ 1, %58 ], [ 0, %53 ], [ 0, %50 ], [ 0, %124 ], [ 0, %67 ], [ 0, %72 ], [ 0, %78 ], [ 1, %90 ], [ 1, %100 ]
  ret i8 %164
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #12
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ptr_deref_may_alias_ref_p_1(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = tail call ptr @ao_ref_base(ptr noundef %1) #12
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %17 [
    i16 47, label %6
    i16 48, label %6
    i16 49, label %6
    i16 32, label %15
    i16 34, label %15
    i16 36, label %15
    i16 141, label %10
  ]

6:                                                ; preds = %2, %2, %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = tail call fastcc zeroext i8 @ptr_derefs_may_alias_p(ptr noundef %0, ptr noundef %8) #12
  br label %17

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i16
  switch i16 %14, label %17 [
    i16 32, label %15
    i16 34, label %15
    i16 36, label %15
  ]

15:                                               ; preds = %10, %10, %10, %2, %2, %2
  %16 = tail call fastcc zeroext i8 @ptr_deref_may_alias_decl_p(ptr noundef %0, ptr noundef nonnull %3) #12
  br label %17

17:                                               ; preds = %2, %10, %15, %6
  %18 = phi i8 [ %9, %6 ], [ %16, %15 ], [ 1, %10 ], [ 1, %2 ]
  ret i8 %18
}

; Function Attrs: optsize
declare ptr @ipa_reference_get_not_written_global(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @stmt_may_clobber_ref_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ao_ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #14
  call void @ao_ref_init(ptr noundef nonnull %3, ptr noundef %1) #12
  %4 = call zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef %0, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #14
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_continuation_for_phi(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #2 {
  %4 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #12
  switch i32 %4, label %57 [
    i32 1, label %5
    i32 2, label %8
  ]

5:                                                ; preds = %3
  %6 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef 0) #12
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #12
  br label %57

8:                                                ; preds = %3
  %9 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef 0) #12
  %10 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %9) #12
  %11 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef 1) #12
  %12 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %11) #12
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %12, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  %17 = icmp eq ptr %10, %12
  br i1 %17, label %55, label %18

18:                                               ; preds = %8
  %19 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %14) #12, !range !25
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %16) #12, !range !25
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = tail call fastcc ptr @gimple_bb(ptr noundef %16) #12
  %26 = tail call fastcc ptr @gimple_bb(ptr noundef %14) #12
  %27 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %25, ptr noundef %26) #13
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24, %18
  %30 = tail call fastcc zeroext i8 @maybe_skip_until(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %1, ptr noundef nonnull %12, ptr noundef %2) #12
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %57, label %55

32:                                               ; preds = %24, %21
  %33 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %16) #12, !range !25
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = tail call fastcc ptr @gimple_bb(ptr noundef %14) #12
  %37 = tail call fastcc ptr @gimple_bb(ptr noundef %16) #12
  %38 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %36, ptr noundef %37) #13
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35, %32
  %41 = tail call fastcc zeroext i8 @maybe_skip_until(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %1, ptr noundef nonnull %10, ptr noundef %2) #12
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %57, label %55

43:                                               ; preds = %35
  %44 = tail call fastcc ptr @gimple_vuse(ptr noundef %14) #12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %57, label %46

46:                                               ; preds = %43
  %47 = tail call fastcc ptr @gimple_vuse(ptr noundef %16) #12
  %48 = icmp eq ptr %44, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = tail call zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef %14, ptr noundef %1) #12
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = tail call zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef %16, ptr noundef %1) #12
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %8, %29, %40, %52
  %56 = phi ptr [ %44, %52 ], [ %12, %40 ], [ %10, %29 ], [ %10, %8 ]
  br label %57

57:                                               ; preds = %3, %40, %49, %52, %46, %43, %29, %55, %5
  %58 = phi ptr [ %7, %5 ], [ %56, %55 ], [ null, %29 ], [ null, %43 ], [ null, %46 ], [ null, %52 ], [ null, %49 ], [ null, %40 ], [ null, %3 ]
  ret ptr %58
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !14
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = load ptr, ptr %3, align 8, !tbaa !24
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #12
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_nop_p(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !58
  %3 = icmp eq i32 %2, 18
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @maybe_skip_until(ptr noundef readonly %0, ptr noundef readnone %1, ptr noundef %2, ptr noundef readonly %3, ptr nocapture noundef %4) unnamed_addr #2 {
  %6 = load ptr, ptr %4, align 8, !tbaa !24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #13
  store ptr %9, ptr %4, align 8, !tbaa !24
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi ptr [ %9, %8 ], [ %6, %5 ]
  %12 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %0) #12
  %13 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %12) #12
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %13, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !14
  %16 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %11, i32 noundef %15) #13
  %17 = icmp eq ptr %3, %1
  br i1 %17, label %46, label %18

18:                                               ; preds = %10, %43
  %19 = phi ptr [ %44, %43 ], [ %3, %10 ]
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !14
  %22 = tail call fastcc i32 @gimple_code(ptr noundef %21) #12, !range !58
  %23 = icmp eq i32 %22, 16
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load ptr, ptr %4, align 8, !tbaa !24
  %26 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %21) #12
  %27 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %26) #12
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %27, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !14
  %30 = tail call i32 @bitmap_bit_p(ptr noundef %25, i32 noundef %29) #13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %46

32:                                               ; preds = %18
  %33 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %21) #12, !range !25
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = tail call zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef %21, ptr noundef %2) #12
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = tail call fastcc ptr @gimple_vuse(ptr noundef %21) #12
  br label %43

40:                                               ; preds = %24
  %41 = tail call ptr @get_continuation_for_phi(ptr noundef %21, ptr noundef %2, ptr noundef nonnull %4) #12
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40, %38
  %44 = phi ptr [ %41, %40 ], [ %39, %38 ]
  %45 = icmp eq ptr %44, %1
  br i1 %45, label %46, label %18

46:                                               ; preds = %40, %43, %24, %35, %32, %10
  %47 = phi i8 [ 1, %10 ], [ 0, %40 ], [ 1, %43 ], [ 1, %24 ], [ 0, %35 ], [ 0, %32 ]
  ret i8 %47
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #12, !range !25
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !14
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 3103, ptr noundef nonnull @.str.12) #13
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !24
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !58
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @walk_non_aliased_vuses(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  store ptr null, ptr %6, align 8, !tbaa !24
  %7 = load i8, ptr @timevar_enable, align 1, !tbaa !14
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @timevar_push_1(i32 noundef 39) #13
  br label %10

10:                                               ; preds = %9, %5
  %11 = icmp eq ptr %3, null
  br label %12

12:                                               ; preds = %35, %10
  %13 = phi ptr [ %1, %10 ], [ %36, %35 ]
  %14 = tail call ptr %2(ptr noundef %0, ptr noundef %13, ptr noundef %4) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %39

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %13, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !14
  %19 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %18) #12, !range !25
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = tail call fastcc i32 @gimple_code(ptr noundef %18) #12, !range !58
  %23 = icmp eq i32 %22, 16
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call ptr @get_continuation_for_phi(ptr noundef %18, ptr noundef %0, ptr noundef nonnull %6) #12
  br label %35

26:                                               ; preds = %21
  %27 = tail call zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef %18, ptr noundef %0) #12
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  br i1 %11, label %39, label %30

30:                                               ; preds = %29
  %31 = tail call ptr %3(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %4) #13
  %32 = ptrtoint ptr %31 to i64
  switch i64 %32, label %39 [
    i64 -1, label %38
    i64 0, label %33
  ]

33:                                               ; preds = %30, %26
  %34 = tail call fastcc ptr @gimple_vuse(ptr noundef %18) #12
  br label %35

35:                                               ; preds = %33, %24
  %36 = phi ptr [ %25, %24 ], [ %34, %33 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %12, !llvm.loop !67

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %29, %16, %12, %35, %30, %38
  %40 = phi ptr [ %31, %30 ], [ %14, %12 ], [ null, %16 ], [ null, %29 ], [ null, %35 ], [ null, %38 ]
  %41 = load ptr, ptr %6, align 8, !tbaa !24
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @bitmap_obstack_free(ptr noundef nonnull %41) #13
  br label %44

44:                                               ; preds = %39, %43
  %45 = load i8, ptr @timevar_enable, align 1, !tbaa !14
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call void @timevar_pop_1(i32 noundef 39) #13
  br label %48

48:                                               ; preds = %47, %44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  ret ptr %40
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @walk_aliased_vdefs(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  store ptr null, ptr %6, align 8, !tbaa !24
  %7 = load i8, ptr @timevar_enable, align 1, !tbaa !14
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @timevar_push_1(i32 noundef 39) #13
  br label %10

10:                                               ; preds = %9, %5
  %11 = icmp eq ptr %4, null
  %12 = select i1 %11, ptr %6, ptr %4
  %13 = call fastcc i32 @walk_aliased_vdefs_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %12) #12
  %14 = load ptr, ptr %6, align 8, !tbaa !24
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void @bitmap_obstack_free(ptr noundef nonnull %14) #13
  br label %17

17:                                               ; preds = %10, %16
  %18 = load i8, ptr @timevar_enable, align 1, !tbaa !14
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @timevar_pop_1(i32 noundef 39) #13
  br label %21

21:                                               ; preds = %20, %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @walk_aliased_vdefs_1(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef %4) unnamed_addr #2 {
  %6 = icmp eq ptr %0, null
  br label %7

7:                                                ; preds = %51, %5
  %8 = phi ptr [ %1, %5 ], [ %52, %51 ]
  %9 = phi i32 [ 0, %5 ], [ %44, %51 ]
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = load ptr, ptr %4, align 8, !tbaa !24
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !14
  %17 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %12, i32 noundef %16) #13
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %53, label %19

19:                                               ; preds = %14, %7
  %20 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %11) #12, !range !25
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %19
  %23 = tail call fastcc i32 @gimple_code(ptr noundef %11) #12, !range !58
  %24 = icmp eq i32 %23, 16
  br i1 %24, label %25, label %43

25:                                               ; preds = %22
  %26 = load ptr, ptr %4, align 8, !tbaa !24
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #13
  store ptr %29, ptr %4, align 8, !tbaa !24
  br label %30

30:                                               ; preds = %28, %25
  %31 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %11) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %30, %33
  %34 = phi i64 [ %39, %33 ], [ 0, %30 ]
  %35 = phi i32 [ %38, %33 ], [ %9, %30 ]
  %36 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %11, i64 noundef %34) #12
  %37 = tail call fastcc i32 @walk_aliased_vdefs_1(ptr noundef %0, ptr noundef %36, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4) #12
  %38 = add i32 %37, %35
  %39 = add nuw nsw i64 %34, 1
  %40 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %11) #12
  %41 = zext i32 %40 to i64
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %33, label %53, !llvm.loop !68

43:                                               ; preds = %22
  %44 = add i32 %9, 1
  br i1 %6, label %48, label %45

45:                                               ; preds = %43
  %46 = tail call zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef %11, ptr noundef nonnull %0) #12
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45, %43
  %49 = tail call zeroext i8 %2(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %3) #13
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45, %48
  %52 = tail call fastcc ptr @gimple_vuse(ptr noundef %11) #12
  br label %7

53:                                               ; preds = %14, %19, %48, %33, %30
  %54 = phi i32 [ %9, %30 ], [ %38, %33 ], [ %9, %14 ], [ %9, %19 ], [ %44, %48 ]
  ret i32 %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #2 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #12
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #12
  ret ptr %5
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 8}
!7 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40}
!8 = !{!"long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!7, !8, i64 0}
!12 = !{!7, !8, i64 24}
!13 = !{!7, !8, i64 16}
!14 = !{!9, !9, i64 0}
!15 = !{!16, !17, i64 176}
!16 = !{!"lang_hooks", !17, i64 0, !8, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120, !17, i64 128, !17, i64 136, !17, i64 144, !17, i64 152, !17, i64 160, !17, i64 168, !17, i64 176, !17, i64 184, !17, i64 192, !17, i64 200, !17, i64 208, !17, i64 216, !17, i64 224, !17, i64 232, !18, i64 240, !19, i64 248, !20, i64 256, !21, i64 272, !22, i64 432, !23, i64 560, !17, i64 584, !17, i64 592, !17, i64 600, !17, i64 608, !17, i64 616, !17, i64 624, !17, i64 632, !17, i64 640, !17, i64 648, !17, i64 656, !17, i64 664, !9, i64 672}
!17 = !{!"any pointer", !9, i64 0}
!18 = !{!"lang_hooks_for_tree_inlining", !17, i64 0}
!19 = !{!"lang_hooks_for_callgraph", !17, i64 0}
!20 = !{!"lang_hooks_for_tree_dump", !17, i64 0, !17, i64 8}
!21 = !{!"lang_hooks_for_decls", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120, !17, i64 128, !17, i64 136, !17, i64 144, !17, i64 152}
!22 = !{!"lang_hooks_for_types", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !9, i64 120}
!23 = !{!"lang_hooks_for_lto", !17, i64 0, !17, i64 8, !17, i64 16}
!24 = !{!17, !17, i64 0}
!25 = !{i8 0, i8 2}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!29, !17, i64 24}
!29 = !{!"function", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !30, i64 104, !30, i64 108, !30, i64 112, !30, i64 116, !30, i64 120, !30, i64 124, !17, i64 128, !30, i64 136, !30, i64 137, !30, i64 138, !30, i64 138, !30, i64 138, !30, i64 138, !30, i64 138, !30, i64 138, !30, i64 138, !30, i64 139, !30, i64 139, !30, i64 139, !30, i64 139, !30, i64 139, !30, i64 139, !30, i64 139}
!30 = !{!"int", !9, i64 0}
!31 = !{!32, !17, i64 16}
!32 = !{!"gimple_df", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !33, i64 32, !33, i64 48, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !30, i64 96, !34, i64 104}
!33 = !{!"pt_solution", !30, i64 0, !30, i64 0, !30, i64 0, !30, i64 0, !30, i64 0, !30, i64 0, !17, i64 8}
!34 = !{!"ssa_operands", !17, i64 0, !30, i64 8, !30, i64 12, !9, i64 16, !17, i64 24, !17, i64 32}
!35 = distinct !{!35, !27}
!36 = !{!33, !17, i64 8}
!37 = !{!38, !30, i64 0}
!38 = !{!"VEC_tree_base", !30, i64 0, !30, i64 4, !9, i64 8}
!39 = !{!30, !30, i64 0}
!40 = !{!41, !17, i64 0}
!41 = !{!"", !17, i64 0, !17, i64 8, !17, i64 16}
!42 = !{!43, !17, i64 24}
!43 = !{!"htab", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !30, i64 56, !30, i64 60, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !30, i64 104}
!44 = !{!41, !17, i64 8}
!45 = !{!41, !17, i64 16}
!46 = distinct !{!46, !27}
!47 = !{!32, !17, i64 0}
!48 = !{!49, !17, i64 0}
!49 = !{!"ao_ref_s", !17, i64 0, !17, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !30, i64 40, !30, i64 44}
!50 = !{!49, !17, i64 8}
!51 = !{!49, !30, i64 40}
!52 = !{!49, !8, i64 16}
!53 = !{!49, !8, i64 24}
!54 = !{!49, !8, i64 32}
!55 = !{!49, !30, i64 44}
!56 = !{i32 0, i32 65536}
!57 = !{!8, !8, i64 0}
!58 = !{i32 0, i32 256}
!59 = !{i32 -1, i32 2}
!60 = !{!61, !17, i64 8}
!61 = !{!"ptr_info_def", !33, i64 0}
!62 = distinct !{!62, !27}
!63 = distinct !{!63, !27}
!64 = distinct !{!64, !27}
!65 = !{!66, !17, i64 24}
!66 = !{!"ssa_use_operand_d", !17, i64 0, !17, i64 8, !9, i64 16, !17, i64 24}
!67 = distinct !{!67, !27}
!68 = distinct !{!68, !27}
